#### Vue生命周期
>>>

                                  ----------------------
                                  |       new Vue()     |
                                  -----------------------
                                            |
                                            V
                                  --------------------------
                                  |init Events & reactivity|
                                  --------------------------
                beforCteate <-------------  |
                                            V
                                  ---------------------------
                                  |init injections&reactivity|
                                  ----------------------------
                created   <---------------  |
                                            V
                                  ---------------------    No
                                  |  Has "el" option? |--------
                                  --------------------         |
                                            |              when vm.$mount(el) is called
                                      Yes   |                  |
                                            V                  |
                                  ----------------------       |
                                  |has "template"option?|<-----
                                  ----------------------
                                            |
                            Yes-------------------------------No
                            |                                 |
                      compile template                   compile el's
                      into render function*              outeHTML as template*
                            |---------------|-----------------|
           beforMount<----------------------|
                                            V
                                --------------------------
                                |create vm.$el and replace|
                                | "el" with it            |
                                --------------------------
                                            |
                  mounted  <----------------|-------------------------->when data changes------>beforUpdate
                                            |
                                          Mounted----------------------virtual DOM re-render patch --------updated
                                            |
                                        when vm.$destroy()
                                        is called
                                            |
        beforeDestroy<----------------------|
                                            V
                               ----------------------------
                               |  Teardown watchers child  |
                               |  components and event     |
                               |  listeners                |
                               ----------------------------
                                            |
                                            |
                                            V
              Destroyed<----------------Destroyed
