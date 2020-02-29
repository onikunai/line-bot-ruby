class Form
  #templateは、max4つ
  def template(title, text1, text2, text3, text4)
    if text4 != ""
      {
        "type": "template",
        "altText": "this is a buttons template",
        "template": {
            "type": "buttons",
            "text": title,
            "actions": [
                {
                  "type": "message",
                  "label": text1,
                  "text": text1,
                },
                {
                  "type": "message",
                  "label": text2,
                  "text": text2,
                },
                {
                  "type": "message",
                  "label": text3,
                  "text": text3,
                },
                {
                  "type": "message",
                  "label": text4,
                  "text": text4,
                }
            ]
        }
      }
    elsif text3 != ""
      {
        "type": "template",
        "altText": "this is a buttons template",
        "template": {
            "type": "buttons",
            "text": title,
            "actions": [
                {
                  "type": "message",
                  "label": text1,
                  "text": text1,
                },
                {
                  "type": "message",
                  "label": text2,
                  "text": text2,
                },
                {
                  "type": "message",
                  "label": text3,
                  "text": text3,
                }
            ]
        }
      }
    elsif text2 != ""
      {
        "type": "template",
        "altText": "this is a buttons template",
        "template": {
            "type": "buttons",
            "text": title,
            "actions": [
                {
                  "type": "message",
                  "label": text1,
                  "text": text1,
                },
                {
                  "type": "message",
                  "label": text2,
                  "text": text2,
                }
            ]
        }
      }
    else
      {
        "type": "template",
        "altText": "this is a buttons template",
        "template": {
            "type": "buttons",
            "text": title,
            "actions": [
                {
                  "type": "message",
                  "label": text1,
                  "text": text1,
                }
            ]
        }
      }
    end
  end

end