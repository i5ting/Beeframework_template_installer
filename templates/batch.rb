#!/usr/bin/env ruby -wKU
# encoding: UTF-8

# gem install TemplateInfo
`rvm use 1.9.3@rails320`

`./mybuild.sh`

Dir.foreach('./mybuild') do |f|  
  if /lib/ =~ f
    p f
    #`cd #{f} &&ruby t.rb && cp -f TemplateInfo.xml #{dest_dir}/#{f}/TemplateInfo.plist &&cp -f TemplateInfo.xml #{dest_dir}/#{f}/TemplateInfo.plist`
    `cd ./mybuild/#{f} && tif_create && cp -f TemplateInfo.plist ../../Xcode4_templates/#{f}/TemplateInfo.plist `
  end
end  