<?php return array (
  'components' => 
  array (
    'db' => 
    
	
	
	
	
    array (
      'connectionString' => 'mysql:host=localhost;dbname=beatz',
      'username' => 'root',
      'password' => '',
    ),
    
	
	

	
    'cache' => 
    array (
      'class' => 'CDummyCache',
    ),
    'user' => 
    array (
    ),
    'mail' => 
    array (
      'class' => 'ext.yii-mail.YiiMail',
      'transportType' => 'php',
      'viewPath' => 'application.views.mail',
      'logging' => true,
      'dryRun' => false,
    ),
  ),
  'params' => 
  array (
    'installer' => 
    array (
      'db' => 
      
	  
	  
      array (
        'installer_hostname' => 'localhost',
        'installer_database' => 'beatz',
      ),
    ),
    'installed' => true,
  ),
  
  
  
  
  
  
  
  
  
  
  'name' => 'Beatz',
  'language' => 'en',
  'theme' => 'construction_yii_theme',
); ?>