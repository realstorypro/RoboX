class Api::V1::BuildsController < ApplicationController
  # need to pass account_id
  # need to pass blueprint
  def create
    render json: {build_id: 1234567, status: 'deploying'}
  end

  # need to pass build_id
  def status
    render json: {status: 'deployed'}
  end

  # need to pass build_id
  def update_url
    render json: params.to_json
  end

  # need to pass build_id
  def disable
    render json: params.to_json
  end
end
