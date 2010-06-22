<?php
	
	require_once EXTENSIONS . '/ds_sections/lib/class.datasource.php';
	
	Final Class DataSourceEntries extends SectionsDataSource {

		public function __construct(){
			parent::__construct();

			$this->_about = (object)array(
				'name'			=> 'Entries',
				'author'		=> (object)array(
					'name'			=> 'Stephen Bau',
					'website'		=> 'http://markuplibrary.org/apps/symphony/symbiosis',
					'email'			=> 'bauhouse@gmail.com'
				),
				'version'		=> '1.0',
				'release-date'	=> '2010-06-22T05:49:21+00:00'
			);
			
			$this->_parameters = (object)array(
				'root-element' => 'entries',
				'limit' => '20',
				'page' => '1',
				'section' => 'entries',
				'conditions' => array (
					),
				'filters' => array (
					  0 => 
					  array (
					    'type' => 'is',
					    'value' => '{$entry}',
					    'element-name' => 'title',
					  ),
					),
				'redirect-404-on-empty' => false,
				'append-pagination' => false,
				'append-sorting' => false,
				'sort-field' => 'system:id',
				'sort-order' => 'asc',
				'included-elements' => array (
					  0 => 'system:creation-date',
					  1 => 'system:modification-date',
					  2 => 'system:user',
					  3 => 'title: formatted',
					  4 => 'body: formatted',
					  5 => 'date',
					  6 => 'author',
					  7 => 'photo',
					  8 => 'tags',
					),
				'parameter-output' => array (
					  0 => 'system:id',
					),
				'dependencies' => array (
					),
			);
		}

		public function allowEditorToParse() {
			return true;
		}
	}

	return 'DataSourceEntries';