class Publications::BuildController < ApplicationController
  include Wicked::Wizard

  steps :operation_type, :publication_type, :property_type,
       :data_input_one, :data_input_two, :data_input_three, :payment

  before_action :set_publication, only: [:show, :update]

  def show
    generate_default_publication
    render_wizard
  end

  def update
    params[:publication]||={}
    params[:publication][:status] = step.to_s
    params[:publication][:status] = 'active' if step == steps.last
    @publication.update_attributes(publication_params)
    if @publication.valid?
      render_wizard @publication
    else
      generate_default_publication
      render_wizard
    end
  end

  def create
    @publication = Publication.create user: current_user
    redirect_to wizard_path(steps.first, :publication_id => @publication.id)
  end

  private #==================================================

  def finish_wizard_path
    publications_path
  end

  def publication_params
    params.require(:publication).
        permit(:operation_type, :property_id, :publication_type_id, :currency,
               :price, :status, property_attributes:
            [
                :id, :property_type_id, :address, :location_id,
                images_attributes:
                    [
                        :id, :file
                    ],
                videos_attributes:
                    [
                        :id, :url
                    ],
                characteristic_instances_attributes:
                    [
                        :characteristic_id, :type, :string,
                        :integer, :boolean, :values, :id
                    ]
            ]
    )
  end

  def generate_default_publication
    if step == :data_input_one
      (@publication.property.images.count .. @publication.publication_type.images_count-1).each do
        @publication.property.images.build
      end
      (@publication.property.videos.count .. @publication.publication_type.videos_count-1).each do
        @publication.property.videos.build
      end
    end

    if step == :data_input_two
      @publication.property.property_type.characteristics.each do |characteristic|
        CharacteristicInstance.find_or_create_by( characteristic: characteristic, property: @publication.property) do |instance|
          instance.type = "CharacteristicInstance::#{characteristic.characteristic_type}"
        end
      end
    end

  end

  def set_publication
    @publication = Publication.find(params[:publication_id])
    @publication.build_property(user: current_user) unless @publication.property
  end
end
