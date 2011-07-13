require 'spec_helper'

describe ApplicationHelper do
  describe '#render_flash' do
    it 'renders the success message when available' do
      flash[:success] = 'Good!'
      helper.render_flash.should eql %{<div class="message success">Good!</div>}
    end

    it 'renders the error message when available' do
      flash[:error] = 'Bad!'
      helper.render_flash.should eql %{<div class="message error">Bad!</div>}
    end

    it 'renders nothing when nothing is available' do
      helper.render_flash.should be_nil
    end
  end
end

