module PeopleHelper

  def message_links(people)
    people.map { |p| email_link(p)}
  end

  # Return a person's image link.
  # The default is to display the person's icon linked to the profile.
  def image_link(person, options = {})
    link = options[:link] || person
    image = options[:image] || :icon
    image_options = { :title => h(person.display_name), :alt => h(person.display_name) }
    unless options[:image_options].nil?
      image_options.merge!(options[:image_options]) 
    end
    link_options =  { :title => h(person.display_name) }
    unless options[:link_options].nil?                    
      link_options.merge!(options[:link_options])
    end
    content = image_tag(person.send(image), image_options)
    # This is a hack needed for the way the designer handled rastered images
    # (with a 'vcard' class).
    if options[:vcard]
      content = %(#{content}#{content_tag(:span, h(person.display_name), 
                                                 :class => "fn" )})
    end
    link_to(content, link, link_options)
  end

  # Link to a person (default is by name).
  def person_link(text, person = nil, html_options = nil)
    if person.nil?
      person = text
      text = person.display_name
    elsif person.is_a?(Hash)
      html_options = person
      person = text
      text = person.display_name
    end
    # We normally write link_to(..., person) for brevity, but that breaks
    # activities_helper_spec due to an RSpec bug.
    link_to(h(text), person, html_options)
  end
    
  private
    
    # Make captioned images.
    def captioned(images, captions)
      images.zip(captions).map do |image, caption|
        markaby do
          image << div { caption }
        end
      end
    end
end
