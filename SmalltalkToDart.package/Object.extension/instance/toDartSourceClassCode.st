*SmalltalkToDart
toDartSourceClassCode
	| s |
	s := String new writeStream.
	s
		nextPutAll: 'class ';
		nextPutAll: self dartSourceClassName;
		space;
		nextPutAll: ((self class superclass name = 'Object') ifTrue: '' ifFalse: ' extends ', self class superclass name );
		nextPutAll: '{'.
		
self class instVarNames asOrderedCollection do: [ :each |
		(self instVarNamed: each) toDartSourceCodeWithName: each onStream: s
	].
   s
		cr;
		nextPutAll: '}'.
	^ s contents