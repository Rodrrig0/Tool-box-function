points_to_idw = function(data, shape, idp, name_col){
  grid = makegrid(shape)
  grid_spat = SpatialPoints(grid, proj4string = CRS(proj4string(shape)))
  grid_spat = SpatialPixels(grid_spat[shape,])
  idw = idw(data@data[[name_col]]~1, data, newdata = grid_spat, idp = 1)
  raster = raster(idw)
  
  return(raster)
}

