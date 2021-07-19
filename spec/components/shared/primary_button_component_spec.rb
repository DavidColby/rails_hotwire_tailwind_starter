require "rails_helper"

RSpec.describe Shared::PrimaryButtonComponent, type: :component do
  subject(:component) { described_class.new.with_content('Submit') }

  it 'renders a button with the provided label' do
    render_inline(component)

    expect(rendered_component).to include('Submit')
  end
end
