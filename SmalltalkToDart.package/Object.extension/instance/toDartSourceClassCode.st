*SmalltalkToDart
toDartSourceClassCode
	| s |
	s := String new writeStream.
	s
		nextPutAll: 'class ';
		nextPutAll: self className;
		space;
		nextPutAll: '{'.
		
self class instVarNames asOrderedCollection do: [ :each |
		(self instVarNamed: each) toDartSourceCodeWithName: each onStream: s
	].
   s
		cr;
		nextPutAll: '}'.
	^ s contents