Teacup::Stylesheet.new :main do
  style :magic_8ball_message,
    top:             60,
    left:            10,
    width:           300,
    height:          80,
    text:            "Tap for Answer!",
    textAlignment:   :center,
    font:            :bold.uifont(34),
    textColor:       :darkgray,
    backgroundColor: :lightgray

  style :root,
    image: 'background.png',
    accessibilityLabel: 'screen'
end