#!/usr/bin/env ruby
require 'bundler'
Bundler.setup

require 'sinatra'

class App < Sinatra::Application
  # Root HTML.
  get '/' do
    erb :welcome
  end

  # Global JS.
  get('/application.js') do
    begin
      source = Dir.glob('javascripts/**/*.coffee').sort.map { |f| File.read f }.
                   join("\n")
      coffee source
    rescue
      Dir.glob('javascripts/**/*.coffee').sort.map { |f|
        puts "File: #{f}"
        CoffeeScript.compile File.read(f)
      }.join
    end
  end
  
  # Global CSS.
  get('/application.css') { scss :"../stylesheets/application" }
end
