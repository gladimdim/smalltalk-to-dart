*SmalltalkToDart
toDartSourceCodeWithName: aPropertyName onStream: aStream
aStream
   cr;
	nextPutAll: self dartSourceClassName;
	space;
	nextPutAll: aPropertyName;
	space;
	nextPutAll: ';'