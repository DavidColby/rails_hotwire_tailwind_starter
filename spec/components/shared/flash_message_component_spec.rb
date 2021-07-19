require "rails_helper"

RSpec.describe Shared::FlashMessageComponent, type: :component do
  context 'when a user is not logged in' do
    it 'renders a navbar with sign in and sign up links' do
      render_inline(Shared::FlashMessageComponent.new(level: :notice).with_content('Flash message here!'))

      expect(rendered_component).to have_text 'Flash message here!'
      expect(rendered_component).to have_css '.bg-blue-400'
    end
  end
end
