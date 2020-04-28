*SmalltalkToDart
toDartSourceCodeWithName: aPropertyName onStream: aStream
aStream
   cr;
	nextPutAll: self className ;
	space;
	nextPutAll: aPropertyName;
	space;
	nextPutAll: ';'