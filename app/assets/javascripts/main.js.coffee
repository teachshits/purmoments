RecaptchaOptions =
  theme: "custom"
  custom_theme_widget: "recaptcha_widget"


$ ->
  $('#login_form #user_password, #login_form #user_email, #user_password_confirmation').focusin ->
    $(this).attr('placeholder_text', $(this).attr('placeholder'))
    $(this).attr('placeholder', '')
  $('#login_form #user_password, #login_form #user_email, #user_password_confirmation').blur ->
    $(this).attr('placeholder', $(this).attr('placeholder_text'))
    if $(this).val() == ''
      $(this).css('background-position', '5px 5px')
    else
      $(this).css('background-position', '5px 25px')