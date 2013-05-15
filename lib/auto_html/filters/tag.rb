AutoHtml.add_filter(:tag).with({}) do |text, options|
  regex = /(\A|\z|\s)(#)([a-z0-9_]*[a-z_][a-z0-9_]*)/i
  text.gsub(regex) do
    tag = $3
    %{ <span class="secondary label #{tag}">#{tag}</span> }
  end
end

