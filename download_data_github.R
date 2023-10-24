download_data_github = function(url) {
  
  split = strsplit(url, split = "/")
  categorie = split[[1]][length(split[[1]])-1]
  dest_dir = paste0("data/",categorie)
  
  dir.create(dest_dir)
  
  dest_file = basename(url)
  
  dest_path = file.path(dest_dir, dest_file)
  
  download.file(url = url, destfile = dest_path)
  
  return(paste0("Données enregristrées dans : ",dest_path))
  
  
}