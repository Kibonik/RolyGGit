$(document).ready ->
  dmg = $(".weapon_addon_dmg")
  dist = $(".weapon_addon_dist")
  clip = $(".weapon_addon_clip")
  text = $(".weapon_addon_text")


  $('.weapon_addon_weapon_addon_type_id').change ->
    newfunc($)

  newfunc = ($)->
    dmg.add(dist).add(clip).add(text).children().prop("disabled", false)
    str =  $("option:selected").val()
    switch str
      when "1" then text.children().prop("disabled", true)
      when "2" then dmg.add(dist).add(clip).children().prop("disabled", true)
  newfunc($)

