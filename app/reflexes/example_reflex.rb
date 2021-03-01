# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test
    cable_ready['example'].inner_html(
      selector: '#replace-me',
      html: ''
    )
    cable_ready['example'].broadcast
    morph :nothing
  end
end
