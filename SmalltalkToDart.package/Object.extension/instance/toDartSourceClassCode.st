*SmalltalkToDart
toDartSourceClassCode
	| s jsonSection |
	s := String new writeStream.
	jsonSection := String new writeStream.
	jsonSection
		nextPutAll: 'static ' , self dartSourceClassName;
		nextPutAll: ' fromJson(Map<String, dynamic> jsonMap) {';
		cr;
		nextPutAll: 'return ' , self dartSourceClassName;
		nextPutAll: '()'.
	s
		nextPutAll: 'class ';
		nextPutAll: self dartSourceClassName;
		space;
		nextPutAll:
			(self class superclass name = 'Object'
				ifTrue: ''
				ifFalse: ' extends ' , self class superclass name);
		nextPutAll: '{'.
	self class instVarNames asOrderedCollection
		do: [ :each | 
			(self instVarNamed: each) toDartSourceCodeWithName: each onStream: s.
			(self instVarNamed: each) toFromJsonSourceCodeWithMap: 'jsonMap' varName: each onStream: jsonSection. ].
	jsonSection
		nextPutAll: ';';
		cr;
		nextPutAll: '}';
		cr.
	s
	cr;
		nextPutAll: jsonSection contents;
		nextPutAll: '}'.
	^ s contents