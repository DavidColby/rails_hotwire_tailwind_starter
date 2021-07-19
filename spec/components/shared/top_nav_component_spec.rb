require "rails_helper"

RSpec.describe Shared::TopNavComponent, type: :component do
  context 'when a user is logged in' do
    it 'renders a navbar with a sign out link' do
      render_inline(Shared::TopNavComponent.new(user: User.new))

      expect(rendered_component).to have_text 'Rails 6 Starter'
      expect(rendered_component).to have_link 'Sign out', href: '/signout'
    end
  end

  context 'when a user is not logged in' do
    it 'renders a navbar with sign in and sign up links' do
      render_inline(Shared::TopNavComponent.new(user: nil))

      expect(rendered_component).to have_link 'Sign in', href: '/login'
      expect(rendered_component).to have_link 'Sign up', href: '/sign_up'
    end
  end
end
