download_google_drive = function(file) {
  
  fichier = googledrive::drive_find()
  
  split = strsplit(file, split = "/")
  name = basename(file)
  id = fichier[fichier$name==file,]$id
  id = gsub("\"", "", paste0('"', id, '"'))
  categorie = split[[1]][length(split[[1]])-1]
  
  dir.create(paste0("data/", categorie))
  
  googledrive::drive_download(googledrive::as_id(id), path =paste0("data/", categorie, "/",name), overwrite = T )
}