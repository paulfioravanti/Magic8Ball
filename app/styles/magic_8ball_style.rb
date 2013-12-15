Teacup::Stylesheet.new :magic_8ball do
  style :message_label,
    top:             60,
    left:            10,
    width:           300,
    height:          80,
    text:            I18n.t('messages.tap_for_answer'),
    textAlignment:   :center,
    font:            :bold.uifont(34),
    textColor:       :dark_gray,
    backgroundColor: :light_gray

  style :screen,
    image: 'background.png',
    accessibilityLabel: 'screen'
end