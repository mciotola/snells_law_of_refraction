# Simulation Banner
puts "\n\n"
puts "###############################################################################"
puts "#                                                                             #"
puts "# SNELL'S LAW version 01.05                                                   #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Copyright 2011-13 by Mark Ciotola; available for use under GNU license      #"
puts "# Last revised on 25 Oct 2013                                                 #" 
puts "# Website: http://www.heatsuite.com                                           #"             
puts "# Source site: github                                                         #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Description:                                                                #"
puts "# Snell's Law of the refraction of light                                      #"
puts "#                                                                             #"
puts "###############################################################################"
puts "\n\n"

      ###############################################################################
      #                                                                             #
      # Developed with Ruby 1.9.2                                                   #
      # Takes the following parameters: temperature of reservoirs                   #
      # Last revised on 19 October 2013                                             #
      #                                                                             #
      ###############################################################################


puts "================================== Background =================================\n\n"
  
  puts " Snell's Law describes the path light will take through two     "
  puts " materials in series, where each has a different index of "
  puts " refraction. "
  puts "\n"
  puts " n1 sin(theta1) = n2 sin(theta2) \n"  
  puts "\n"
  puts " n = index of refraction of material \n" 
  puts " theta = angle of incidence of light ray \n" 
  puts "\n\n"
  
  
# Include the Math library
  include Math  
  
  
# Initialize simulation parameters

  angle1 = 30.0 # in degrees
  anglerad1 = (2 * PI / 360.0) * angle1 # in radians
  material1 = 'crown glass'  # dense flint glass
  material2 =  'dense flint glass' # crown glass
  indexofrefraction1 = 1.517 # for crown glass
  indexofrefraction2 = 1.655 # for dense flint glass

  
# Display the parameters 

  puts "================================== Parameters =================================\n\n"


  puts sprintf "  Material 1: \t\t\t %7s " , material1
  puts sprintf "  Material 2: \t\t\t %7s " , material2
  puts sprintf "  Index of Refraction of 1: \t %7.3f " , indexofrefraction1.to_s
  puts sprintf "  Index of Refraction of 2: \t %7.3f " , indexofrefraction2.to_s
  puts sprintf "  Angle 1 (degrees): \t\t %7s " , angle1
  puts sprintf "  Angle 1 (radians): \t\t %7s " , anglerad1

  puts "\n\n"  

# Run the simulation 

  
  if material1 == 'crown glass'
	indexofrefraction1 = 1.517
  elsif material1 == 'dense flint glass'
    indexofrefraction1 = 1.655
  end
  
  if material2 == 'crown glass'
	indexofrefraction2 = 1.517
  elsif material2 == 'dense flint glass'
    indexofrefraction2 = 1.655
  end

  
  # Calculate angles
  
  anglerad2 = asin  ( ( indexofrefraction1 / indexofrefraction2 ) * sin(anglerad1))
  angle2 = (360.0/(2 * PI)) * anglerad2

# Display the output 

  puts "==================================== Output ===================================\n\n"
  puts sprintf "  Angle 2 (radians): \t\t %7s " , anglerad2  
  puts sprintf "  Angle 2 (degrees): \t\t %7s " , angle2

  puts "\n\n"


  puts "=============================== References Data ===============================\n\n"



  puts "Typical refractive indices for yellow light\n\n"
  puts "  crown glass, 1.517"
  puts "  dense flint glass, 1.655"  

  puts " \n\n"

  puts "================================== References =================================\n\n"

  puts "Wolfram, http://scienceworld.wolfram.com/physics/SnellsLaw.html \n"
  puts "Encyclopaedia Britannica, http://www.britannica.com/EBchecked/topic/495677/refractive-index \n"
  
  
  puts "\n\n"
  
