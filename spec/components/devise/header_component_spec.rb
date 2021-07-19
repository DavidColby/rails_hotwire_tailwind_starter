require "rails_helper"

RSpec.describe Devise::HeaderComponent, type: :component do
  context 'when all content is provided' do
    it 'renders a header with the provided content' do
      render_inline(Devise::HeaderComponent.new(path: '/users/sign_in')) do |component|
        component.intro { 'Intro' }
        component.lead_in { 'Lead In' }
        component.action_label { 'Sign In' }
      end

      expect(rendered_component).to have_css 'h2', text: 'Intro'
      expect(rendered_component).to have_css 'p', text: 'Lead In'
      expect(rendered_component).to have_link 'Sign In', href: '/users/sign_in'
    end
  end

  context 'when lead_in is not provided' do
    it 'renders a header without a link' do
      render_inline(Devise::HeaderComponent.new(path: 'users/sign_up')) do |component|
        component.intro { 'Intro' }
        component.lead_in { '' }
      end

      expect(rendered_component).to have_text('Intro')
      expect(rendered_component).not_to have_text('Lead In')
      expect(rendered_component).not_to have_text('Sign In')
    end
  end
end
