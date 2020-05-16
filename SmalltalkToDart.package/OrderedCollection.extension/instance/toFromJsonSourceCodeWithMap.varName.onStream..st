*SmalltalkToDart
toFromJsonSourceCodeWithMap: aMapName varName: aName onStream: jsonSection
|elementClassName|
elementClassName := (self at: 1) dartSourceClassName .
jsonSection cr;
				nextPutAll: '..';
				nextPutAll: aName;
				nextPutAll: ' = ';
				nextPutAll: '(', aMapName, '["' , aName  , '"]', ' as List' , ').map';
				cr;
				nextPutAll: '((element) => ', elementClassName, '.fromJson(element)).toList()'.
 				
			