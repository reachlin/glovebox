require 'docker'
require 'json'

class ProjectsController < ApplicationController
  def index
    @project_list = Projects.all
  end

  def run
    Docker.url = 'tcp://docker:2375'
    project = Projects.find(params[:id])
    @container = Docker::Container.create('Cmd' => ['ls'], 'Image' => project.title)
    @container.start
    @container = @container.json
  end
end
