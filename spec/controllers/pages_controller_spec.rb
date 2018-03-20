require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET #home' do
    subject { get :home }

    it 'renders the home template' do
      expect(subject).to render_template(:home)
      expect(subject).to render_template('home')
      expect(subject).to render_template('pages/home')
    end

    it 'does not render a different template' do
      expect(subject).to_not render_template('pages/show')
    end
  end

  describe 'GET #about' do
    subject { get :about }

    it 'renders the about template' do
      expect(subject).to render_template(:about)
      expect(subject).to render_template('about')
      expect(subject).to render_template('pages/about')
    end

    it 'does not render a different template' do
      expect(subject).to_not render_template('pages/show')
    end
  end

  describe 'GET #directions' do
    subject { get :directions }

    it 'render the directions template' do
      expect(subject).to render_template(:directions)
      expect(subject).to render_template('directions')
      expect(subject).to render_template('pages/directions')
    end

    it 'does not render a different template' do
      expect(subject).to_not render_template('pages/show')
    end
  end
end
