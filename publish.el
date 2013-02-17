(require 'org-publish)

(setq 
 org-publish-project-alist
 '(("sympas-text"
    :base-directory "~/ver/sympas/text/"
    :base-extension "org"
    :publishing-directory "~/ver/sympas-web/"
    :recursive t
    :publishing-function org-publish-org-to-html
    :headline-levels 4             ; Just the default for this project.
    :auto-preamble t )
   
   ("sympas-static"
    :base-directory "~/ver/sympas/"
    :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
    :publishing-directory "~/ver/sympas-web"
    :recursive t
    :publishing-function org-publish-attachment )

   ("sympas" :components ("sympas-text" "sympas-static"))

))

(org-publish-project "sympas")
