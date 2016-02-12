class AdaptivePlaceholderInput < SimpleForm::Inputs::Base
  def input_html_classes
    super.push(options[:type])
  end


  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)
    if options[:type] == :password || options[:type] == :password_confirm
      @builder.password_field(attribute_name, merged_input_options)
    elsif options[:type] == :text
      @builder.text_area(attribute_name, merged_input_options)
    else
      @builder.text_field(attribute_name, merged_input_options)
    end
  end
end
