/* Commented SubProgram - Two examples leading to FOR Loop
 
 - Primitive Data
 File imageBike_f = new File( files[0] );
 BufferedImage imageBike_b;
 File imageMan_f = new File( files[1] );
 BufferedImage imageMan_b;
 int[] imageDimensions = new int[4];
 try {
 imageBike_b = ImageIO.read( imageBike_f );
 imageMan_b = ImageIO.read( imageMan_f );
 println( "Bike Width: " + imageBike_b.getWidth() + ", Bike Height: " + imageBike_b.getHeight() );
 println( "Bike Width: " + imageMan_b.getWidth() + ", Bike Height: " + imageMan_b.getHeight() );
 imageDimensions[0] = imageBike_b.getWidth();
 imageDimensions[1] = imageBike_b.getHeight();
 imageDimensions[2] = imageMan_b.getWidth();
 imageDimensions[3] = imageMan_b.getHeight();
 }
 catch (IOException e) {
 e.printStackTrace();
 imageBike_b = null;
 imageMan_b = null;
 }
 
 - Array Exemplar without FOR
 File[] imagesFile = new File[2];
 imagesFile[0] = new File( files[0] ); //File filePathway_Name[i] makes ERROR even though same Class
 imagesFile[1] = new File( files[1] );
 println("File-type Image Files");
 printArray(imagesFile);
 println();
 BufferedImage[] images = new BufferedImage[2];
 int[] imageDimensions = new int[4];
 //Comment the
 try {
 images[0] = ImageIO.read( imagesFile[0] ); //Without the TRY, ERROR "Unhandled Exception type IOException"
 images[1] = ImageIO.read( imagesFile[1] ); //Without the TRY, ERROR "Unhandled Exception type IOException"
 println( "Bike Width: " + images[0].getWidth() + ", Bike Height: " + images[0].getHeight() );
 println( "Bike Width: " + images[1].getWidth() + ", Bike Height: " + images[1].getHeight() );
 imageDimensions[0] = images[0].getWidth();
 imageDimensions[1] = images[0].getHeight();
 imageDimensions[2] = images[1].getWidth();
 imageDimensions[3] = images[1].getHeight();
 }
 catch (IOException e) {
 e.printStackTrace();
 images[0] = null;
 images[1] = null;
 }
 */
