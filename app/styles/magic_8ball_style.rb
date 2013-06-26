Teacup::Stylesheet.new :magic_8ball do
  style :message_label,
    top:             60,
    left:            10,
    width:           300,
    height:          80,
    text:            "Tap for Answer!",
    textAlignment:   :center,
    font:            :bold.uifont(34),
    textColor:       :darkgray,
    backgroundColor: :lightgray

  style :screen,
    image: 'background.png',
    accessibilityLabel: 'screen'
end