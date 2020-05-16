*SmalltalkToDart
toFromJsonSourceCodeWithMap: aMapName varName: aName onStream: jsonSection
|jsonMapStringBinding element|
element := self at: 1.
jsonMapStringBinding := aMapName, '["' , aName  , '"]'.
jsonSection cr;
				nextPutAll: '..';
				nextPutAll: aName;
				nextPutAll: ' = '.
(#(int String) includes: self dartSourceClassName ) ifTrue: [jsonSection nextPutAll: jsonMapStringBinding  ] ifFalse: [ jsonSection nextPutAll: self toDartFromJsonFactoryClassName  ; nextPutAll: '.fromJson'; nextPutAll: '('; nextPutAll: jsonMapStringBinding; nextPutAll: ')' ] 
 				
			