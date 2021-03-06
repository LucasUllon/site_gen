
import json

let templates* = %*{
  "header": {
    "ui-type": "div",
    "children": [
      {
        "ui-type": "header",
        "class": "masthead",
        "children": [
          {
            "ui-type": "div",
            "class": "container",
            "children": [
              {
                "ui-type": "div",
                "class": "intro-text",
                "children": [
                  {
                    "ui-type": "h1",
                    "children": [
                      {
                        "ui-type": "#text",
                        "text": ""
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  },
  "footer": {
    "ui-type": "footer",
    "children": [
      {
        "ui-type": "div",
        "class": "container",
        "children": [
          {
            "ui-type": "div",
            "class": "row",
            "children": [
              {
                "ui-type": "div",
                "class": "col-md-4",
                "children": [
                  {
                    "ui-type": "span",
                    "class": "copyright",
                    "children": [
                      {
                        "ui-type": "#text",
                        "text": "Copyright © Europy 2019"
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  },
  "menu": {
    "ui-type": "nav",
    "class": "navbar navbar-expand-lg fixed-top",
    "children": [
      {
        "ui-type": "div",
        "class": "container",
        "children": [
          {
            "ui-type": "a",
            "class": "logo navbar-brand js-scroll-trigger",
            "attributes": {
              "href": "#page-top"
            },
            "children": [
              {
                "ui-type": "#text",
                "text": "HOME"
              }
            ]
          },
          {
            "ui-type": "button",
            "class": "navbar-toggler navbar-toggler-right",
            "attributes": {
              "type": "button",
              "data-toggle": "collapse",
              "data-target": "#navbarResponsive",
              "aria-controls": "navbarResponsive",
              "aria-expanded": "false",
              "aria-label": "Toggle navigation"
            },
            "children": [
              {
                "ui-type": "#text",
                "text": "Menu"
              },
              {
                "ui-type": "i",
                "class": "fa fa-bars"
              }
            ]
          },
          {
            "ui-type": "div",
            "class": "collapse navbar-collapse",
            "children": [
              {
                "ui-type": "ul",
                "class": "navbar-nav text-uppercase ml-auto",
                "children": [
                  {
                    "ui-type": "li",
                    "class": "nav-item",
                    "children": [
                      {
                        "ui-type": "a",
                        "class": "nav-link js-scroll-trigger",
                        "attributes": {
                          "href": "#todos"
                        },
                        "children": [
                          {
                            "ui-type": "#text",
                            "text": ""
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  },
  "body": {
    "ui-type": "section",
    "class": "bg-white",
    "children": [
      {
        "ui-type": "div",
        "class": "container",
        "children": [
          {
            "ui-type": "div",
            "class": "row",
            "children": [
              {
                "ui-type": "div",
                "class": "col-md",
                "children": [
                  {
                    "ui-type": "form",
                    "children": [
                      {
                        "ui-type": "div",
                        "attributes": {
                          "class": "form-group"
                        },
                        "children": [
                          {
                            "ui-type": "label",
                            "attributes": {
                              "for": "f808ee69-6e24-4eaf-d0b8-a069c41a4be15"
                            },
                            "children": [
                              {
                                "ui-type": "#text",
                                "text": "Name"
                              }
                            ]
                          }
                        ]
                      },
                      {
                        "ui-type": "div",
                        "attributes": {
                          "class": "form-group"
                        },
                        "children": [
                          {
                            "ui-type": "label",
                            "attributes": {
                              "for": "68765dbb-9e75-480d-a19a-c209eb759b032"
                            },
                            "children": [
                              {
                                "ui-type": "#text",
                                "text": "Description"
                              }
                            ]
                          },
                          {
                            "ui-type": "textarea",
                            "attributes": {
                              "placeholder": "Description",
                              "aria-describedby": "Description",
                              "class": "form-control",
                              "rows": "2"
                            }
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            ]
          },
          {
            "ui-type": "div",
            "class": "row",
            "children": [
              {
                "ui-type": "div",
                "class": "col-md"
              }
            ]
          }
        ]
      }
    ]
  },
  "label": {
    "ui-type": "label",
    "children": [
      {
        "ui-type": "#text",
        "text": ""
      }
    ],
    "attributes": {
      "for": ""
    }
  },
  "formGroup": {
    "ui-type": "div",
    "attributes": {
      "class": "form-group"
    },
    "children": [
      {
        "ui-type": "label",
        "text": "",
        "attributes": {
          "for": ""
        }
      }
    ]
  },
  "input": {
    "ui-type": "input",
    "attributes": {
      "type": "text",
      "class": "form-control",
      "autocomplete": "off"
    }
  },
  "password": {
    "ui-type": "input",
    "attributes": {
      "type": "password",
      "class": "form-control"
    }
  },
  "button": {
    "ui-type": "button",
    "class": "btn btn-dark",
    "children": [
      {
        "ui-type": "text",
        "text": "button"
      }
    ]
  },
  "checkbox": {
    "ui-type": "input",
    "class": "form-control",
    "attributes": {
      "type": "checkbox"
    }
  },
  "textarea": {
    "ui-type": "textarea",
    "class": "form-control",
    "attributes": {
      "rows": "2",
      "cols": "5"
    }
  },
  "container": {"ui-type": "div", "attributes": {"class": "container"}, "children": []},
  "gridColumn": {"ui-type": "div", "attributes": {"class": "col"}, "children": []},
  "gridRow": {"ui-type": "div", "attributes": {"class": "row"}, "children": []},
  "fatalError": {"ui-type":"div","class":"container-fluid","children":[{"ui-type":"div","class":"alert alert-danger","attributes":{"role":"alert"},"children":[{"ui-type":"h4","children":[{"ui-type":"#text","text":"Error - Page Not Found."}]},{"ui-type":"a","attributes":{"href":"#/home"},"children":[{"ui-type":"#text","text":"Go back home."}]}]}]}  
}
