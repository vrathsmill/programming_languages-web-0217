def reformat_languages(languages)
  new_hash = {}

  languages.each do |type_of_language, language_details_hash|
    language_details_hash. each do |language, language_info|
      language_info. each do |type, value|
      if !new_hash[language]
        new_hash[language] = {type => value, :style => [type_of_language]}
      else
        new_hash[language][:style] << type_of_language
      end
    end
  end
end
new_hash
end
