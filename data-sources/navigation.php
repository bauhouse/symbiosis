<?php
	
	require_once EXTENSIONS . '/ds_views/lib/class.datasource.php';
	
	Final Class DataSourceNavigation extends ViewsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Navigation',
				'author'		=> (object)array(
					'name'			=> 'Stephen Bau',
					'website'		=> 'http://markuplibrary.org/apps/symphony/symbiosis',
					'email'			=> 'bauhouse@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-22T05:19:34+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'navigation',
				'parent' => '',
				'type' => ''
			);

		}
		
		public function allowEditorToParse() {
			return true;
		}
	}
	
	return 'DataSourceNavigation';