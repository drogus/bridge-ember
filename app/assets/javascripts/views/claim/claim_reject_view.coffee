@Bridge.ClaimRejectView = Ember.View.extend
  classNames: ["btn"]
  classNameBindings: ["hide"]
  attributeBindings: ["disabled"]
  templateName: "claim/claim_reject"
  tagName: "button"

  hide: (->
    @get("direction") == @get("context.dummy") or
    not @get("context.claimed")
  ).property("context.claimed", "context.dummy")

  disabled: (->
    @get("context.isAccepted")
  ).property("context.isAccepted")

  click: ->
    @get("context").reject(@get("direction"))
