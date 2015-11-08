'From Cuis 4.2 of 25 July 2013 [latest update: #2571] on 8 November 2015 at 5:38:19.055326 pm'!
'Description This package creates files needed for electronic reporting of 1099-MISC data to the IRS using FIRE (Filing Information Returns Electronically). While the package is not comprehensive, it does report rents by a payer to multiple entities. It can be used as a code base for additional capabilities. SUnit tests are included. The test file meets IRS requirements as of January 2015.  Reference: IRS Publication 1220.'!
!provides: 'Fire' 1 9!
!requires: 'Records' 1 1 nil!
!classDefinition: #Form1099Misc category: #'Fire-Model'!
Object subclass: #Form1099Misc
	instanceVariableNames: 'seq payeesSub payeesTotal paidSub paidTotal payerTotal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Form1099Misc class' category: #'Fire-Model'!
Form1099Misc class
	instanceVariableNames: ''!

!classDefinition: #Record1099Misc category: #'Fire-Model'!
RecordLayout subclass: #Record1099Misc
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Record1099Misc class' category: #'Fire-Model'!
Record1099Misc class
	instanceVariableNames: ''!

!classDefinition: #Arecord category: #'Fire-Model'!
Record1099Misc subclass: #Arecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Arecord class' category: #'Fire-Model'!
Arecord class
	instanceVariableNames: ''!

!classDefinition: #Brecord category: #'Fire-Model'!
Record1099Misc subclass: #Brecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Brecord class' category: #'Fire-Model'!
Brecord class
	instanceVariableNames: ''!

!classDefinition: #Crecord category: #'Fire-Model'!
Record1099Misc subclass: #Crecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Crecord class' category: #'Fire-Model'!
Crecord class
	instanceVariableNames: ''!

!classDefinition: #Frecord category: #'Fire-Model'!
Record1099Misc subclass: #Frecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Frecord class' category: #'Fire-Model'!
Frecord class
	instanceVariableNames: ''!

!classDefinition: #Krecord category: #'Fire-Model'!
Record1099Misc subclass: #Krecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Krecord class' category: #'Fire-Model'!
Krecord class
	instanceVariableNames: ''!

!classDefinition: #Trecord category: #'Fire-Model'!
Record1099Misc subclass: #Trecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Model'!
!classDefinition: 'Trecord class' category: #'Fire-Model'!
Trecord class
	instanceVariableNames: ''!

!classDefinition: #ConsistencyTests category: #'Fire-Tests'!
TestCase subclass: #ConsistencyTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Tests'!
!classDefinition: 'ConsistencyTests class' category: #'Fire-Tests'!
ConsistencyTests class
	instanceVariableNames: ''!

!classDefinition: #LengthTests category: #'Fire-Tests'!
TestCase subclass: #LengthTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Fire-Tests'!
!classDefinition: 'LengthTests class' category: #'Fire-Tests'!
LengthTests class
	instanceVariableNames: ''!


!Form1099Misc commentStamp: 'dhn 6/8/2015 18:18' prior: 0!
Form1099Misc produces the records for electronic reporting of rents on Form 1099-MISC to federal and state revenue services. Record formats are defined in IRS Publication 1220.

	Form1099Misc makeTestFile.
	Form1099Misc makeRealFile.

As of January 2015 the 1099-MISC package of records for federal and state reporting in its simplest form consists of:

	a T Record
	an A Record
	one or more B Records
	a C Record
	a K Record
	an F Record
!

!Record1099Misc commentStamp: 'dhn 2/8/2015 18:03' prior: 0!
Record1099Misc is used to populate selected data fields in the records for electronic reporting of rents on 1099-MISC to federal and state revenue services. Record formats are defined in IRS Publication 1220.

Should you wish to report payments other than rents, see the comments in Record1099Misc>realA and Pub 1220.

!

!Arecord commentStamp: 'dhn 1/17/2015 16:33' prior: 0!
An Arecord defines fields of the *payer* record in a 1099-MISC package. See IRS Publication 1220 for the definition of an 'A Record'.
!

!Brecord commentStamp: 'dhn 1/17/2015 16:33' prior: 0!
A Brecord defines fields of the *payee* record in a 1099-MISC package. See IRS Publication 1220 for the definition of a 'B Record'.
!

!Crecord commentStamp: 'dhn 1/17/2015 16:33' prior: 0!
A Crecord defines fields of the end-of-payer record in a 1099-MISC package. See IRS Publication 1220 for the definition of a 'C Record'.
!

!Frecord commentStamp: 'dhn 1/17/2015 16:33' prior: 0!
An Frecord defines fields of the end-of-transmission record in a 1099-MISC package. See IRS Publication 1220 for the definition of an 'F Record'.
!

!Krecord commentStamp: 'dhn 1/17/2015 16:32' prior: 0!
A Krecord defines fields of the end-of-payer record for a state in a 1099-MISC package. See IRS Publication 1220 for the definition of a 'K Record'.!

!Trecord commentStamp: 'dhn 1/17/2015 16:34' prior: 0!
A Trecord defines fields of the transmitter record in a 1099-MISC package. See IRS Publication 1220 for the definition of a 'T Record'.
!

!ConsistencyTests commentStamp: '<historical>' prior: 0!
Verify that fields of a 1099-MISC record layout abut with no gaps or overlap!

!LengthTests commentStamp: '<historical>' prior: 0!
Verify that the sum of individual field lengths equals the record length required for 1099-MISC!

!Form1099Misc methodsFor: 'initialize-release' stamp: 'dhn 1/19/2015 12:12'!
initialize
	super initialize.
	Record1099Misc handler: self.
! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:22'!
paidSub
	"Answer the value of paidSub"
	paidSub ifNil: [paidSub _ 0].
	^ paidSub! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:29'!
paidSub: anObject
	"Set the value of paidSub"
	paidSub _ anObject! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:23'!
paidTotal
	"Answer the value of paidTotal"
	paidTotal ifNil: [paidTotal _ 0].
	^ paidTotal! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:23'!
paidTotal: anObject
	"Set the value of paidTotal"
	paidTotal _ anObject! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:25'!
payeesSub
	"Answer the value of payeesSub"
	payeesSub ifNil: [payeesSub _ 0].
	^ payeesSub! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:25'!
payeesSub: anObject
	"Set the value of payeesSub"
	payeesSub _ anObject! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:26'!
payeesTotal
	"Answer the value of payeesTotal"
	payeesTotal ifNil: [payeesTotal _ 0].
	^ payeesTotal! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:29'!
payeesTotal: anObject
	"Set the value of payeesTotal"
	payeesTotal _ anObject! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:31'!
payerTotal
	"Answer the value of payerTotal"
	payerTotal ifNil: [payerTotal _ 0].
	^ payerTotal! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:26'!
payerTotal: anObject
	"Set the value of payerTotal"
	payerTotal _ anObject! !

!Form1099Misc methodsFor: 'output' stamp: 'dhn 11/8/2015 17:34'!
realFile: aFilename
	"Produce the file for reporting 1099-MISC via FIRE, the IRS electronic reporting system"
	
	aFilename asFileEntry forceWriteStream: [ :ios | ios
		nextPutAll: Trecord new realT;
		nextPutAll: Arecord new realA;
		nextPutAll: Brecord new mnmB;
		nextPutAll: Brecord new dhnB;
		nextPutAll: Crecord new realC;
		nextPutAll: Krecord new realK;
		nextPutAll: Frecord new realF].
	Object inform: 'Real file for submission written to: ', aFilename! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:28'!
seq
	"Answer the value of seq"
	seq ifNil: [seq _ 0].
	^ seq! !

!Form1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:28'!
seq: anObject
	"Set the value of seq"
	seq _ anObject! !

!Form1099Misc methodsFor: 'output' stamp: 'dhn 11/8/2015 17:25'!
testFile: aFilename
	"Produce a test file for FIRE, the IRS electronic reporting system"
	
	aFilename asFileEntry forceWriteStream: [ :ios | ios
		nextPutAll: Trecord new testT;
		nextPutAll: Arecord new realA;
		nextPutAll: Brecord new testB01;
		nextPutAll: Brecord new testB02;
		nextPutAll: Brecord new testB03;
		nextPutAll: Brecord new testB04;
		nextPutAll: Brecord new testB05;
		nextPutAll: Brecord new testB06;
		nextPutAll: Brecord new testB07;
		nextPutAll: Brecord new testB08;
		nextPutAll: Brecord new testB09;
		nextPutAll: Brecord new testB10;
		nextPutAll: Brecord new testB11;
		nextPutAll: Crecord new realC;
		nextPutAll: Krecord new realK;
		nextPutAll: Frecord new realF].
	Object inform: 'Test file written to: ', aFilename! !

!Form1099Misc class methodsFor: 'as yet unclassified' stamp: 'dhn 6/8/2015 18:16'!
how
"
	Form1099Misc makeTestFile.
	
	Form1099Misc makeRealFile.
"
! !

!Form1099Misc class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 16:21'!
makeRealFile
	| fileName |
	fileName := FillInTheBlankMorph 
		request: 'What should the real file be called?' 
		initialAnswer: 'c:\worx\emReal.txt'.
	self new realFile: fileName! !

!Form1099Misc class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 16:21'!
makeTestFile
	| fileName |
	fileName := FillInTheBlankMorph 
		request: 'What should the test file be called?' 
		initialAnswer: 'c:\worx\emtest.txt'.
	self new testFile: fileName! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:37'!
address: aString
	self data at: #Address put: aString! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:37'!
city: aString
	self data at: #City put: aString! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:54'!
dhnB
	| x |
	self year: self lastYear;
		name: 'HOPPER JOB H JR';
		address: '1585 DEAD END DR';
		city: 'PEAWELL';
		state: 'NY';
		zip: '21075'.
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	x _ FillInTheBlankMorph request: 'TIN for ', (self data at: #Name).
	self tin: x.
	x _ FillInTheBlankMorph request: 'Amount for ', (self data at: #Name).
	self data at: #Payment1 put: (self payment1: x asInteger).
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:40'!
initialize
	super initialize
! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:43'!
lastYear
	^ (DateAndTime now yearNumber - 1) asString! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:43'!
mnmB
	| x |
	self year: self lastYear;
		name: 'MOONEY MILTON';
		address: '923 FLOWER LN';
		city: 'ROME';
		state: 'GA';
		zip: '30861'.
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	x := FillInTheBlankMorph request: 'TIN for ', (self data at: #Name).
	self tin: x.
	x := FillInTheBlankMorph request: 'Amount for ', (self data at: #Name).
	self data at: #Payment1 put: (self payment1: x asInteger).
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:44'!
name: aString
	data at: #Name put: aString.
	data at: #Namectl put: (aString copyFrom: 1 to: 4).! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:44'!
realA
	| obj |
	obj := self class handler.
	obj payeesTotal: obj payeesSub.
	obj payeesSub: 0.
	obj paidTotal: obj paidSub.
	obj paidSub: 0.
	obj payerTotal: obj payerTotal + 1.
	self year: self lastYear;
		tin: '582004343';
		name: 'BOGUS CATTLE LLC';
		address: '11585 DRY LAUREL DR';
		city: 'ROSWELL';
		state: 'NM';
		zip: '90075';
		telephone: '8000587552'.
	self data at: #Combined put: '1'.
	self data at: #TypeReturn put: 'A'. "1099-MISC"
	self data at: #AmountCodes put: '1'. "Rents"
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:46'!
realC
	self data at: #Payees put: self class handler payeesSub asString.
	self data at: #Control1 put: self class handler paidSub asString.
	self class handler payeesTotal: self class handler payeesTotal + self class handler payeesSub.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:47'!
realF
	self data at: #Payees put: self class handler payeesTotal asString.
	self data at: #Acount put: self class handler payerTotal asString.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:47'!
realK
	self data at: #Payees put: self class handler payeesSub asString.
	self data at: #Control1 put: self class handler paidSub asString.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'real file' stamp: 'dhn 1/17/2015 16:47'!
realT
	self year: self lastYear;
		tin: '423599343';
		name: 'PRIVET HEDGE FUND';
		address: '1111 OLE LAUREL DR';
		city: 'ROWENA';
		state: 'PA';
		zip: '20009';
		telephone: '7473232705'.
	data at: #Control put: '30763';
		at: #Company put: 'WEEHAKEM INC';
		at: #Contact put: 'FOREST GUMP';
		at: #Email put: '40thieves@blindspring.com';
		at: #Vindicator put: 'I'.
	self sequence.
	^ self assemble: data! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:48'!
sequence
	self class handler seq: 1 + self class handler seq.
	data at: #Sequence put: self class handler seq asString! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:48'!
state: aString
	data at: #State put: aString! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:48'!
stateCode
	^ '13' "Georgia"! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:49'!
telephone: aString
	data at: #Telephone put: aString! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:49'!
testA
	| obj |
	obj := self class handler.
	obj payeesTotal: obj payeesSub.
	obj payeesSub: 0.
	obj paidTotal: obj paidSub.
	obj paidSub: 0.
	obj payerTotal: obj payerTotal + 1.
	self year: self lastYear;
		tin: '534384343';
		name: 'FLUMMOXED INDUSTRIES';
		address: '311J PATHWAY PARK';
		city: 'ROSWELL';
		state: 'GA';
		zip: '30075';
		telephone: '4046780005'.
	self data at: #Combined put: '1'.
	self data at: #TypeReturn put: 'A'. "1099-MISC"
	self data at: #AmountCodes put: '1'. "Rents"
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:49'!
testB01
	self year: self lastYear;
		tin: '123374343';
		name: 'MAGOO MALCOLM';
		address: '4310B JAMES CIRCLE';
		city: 'RENATE';
		state: 'NC';
		zip: '23988'.
	self data at: #Payment1 put: (self payment1: 87143).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:49'!
testB02
	self year: self lastYear;
		tin: '322700017';
		name: 'SIMPSON BARTHOLOMEW';
		address: '104 UNCLE LOUIS';
		city: 'BUSHWHACK';
		state: 'SC';
		zip: '23988'.
	self data at: #Payment1 put: (self payment1: 3000).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:50'!
testB03
	self year: self lastYear;
		tin: '423106021';
		name: 'BELLAM SARAH';
		address: '277 PEANUT BEND';
		city: 'KENO';
		state: 'TN';
		zip: '23988'.
	self data at: #Payment1 put: (self payment1: 118).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:50'!
testB04
	self year: self lastYear;
		tin: '103264578';
		name: 'MASHEE KNUCKLES';
		address: '266 CARRIAGE WAY';
		city: 'AWFUL';
		state: 'AL';
		zip: '42984'.
	self data at: #Payment1 put: (self payment1: 1008).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:51'!
testB05
	self year: self lastYear;
		tin: '875462301';
		name: 'ANDROPOV PIKUP';
		address: '310B ELDERLY CIRCLE';
		city: 'BINTHERE';
		state: 'GA';
		zip: '30156'.
	self data at: #Payment1 put: (self payment1: 35175).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:51'!
testB06
	self year: self lastYear;
		tin: '234657895';
		name: 'SIMPSON HOMERIC';
		address: '3710 JIMMY AVENUE';
		city: 'RENATE';
		state: 'NC';
		zip: '23988'.
	self data at: #Payment1 put: (self payment1: 7706).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:51'!
testB07
	self year: self lastYear;
		tin: '293252415';
		name: 'GULLIBLE AMBROSE';
		address: '653 BUNCOMBE AVE';
		city: 'ASHPATCH';
		state: 'NC';
		zip: '23008'.
	self data at: #Payment1 put: (self payment1: 41).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:52'!
testB08
	self year: self lastYear;
		tin: '111223333';
		name: 'CHEATHAM DEWEY';
		address: '75 BROAD ST';
		city: 'FLEABAG';
		state: 'FL';
		zip: '12034'.
	self data at: #Payment1 put: (self payment1: 1241).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:52'!
testB09
	self year: self lastYear;
		tin: '666884444';
		name: 'MARJORAM MARJORY';
		address: '10B UNDERHANDED';
		city: 'ELSEWHERE';
		state: 'GA';
		zip: '33220'.
	self data at: #Payment1 put: (self payment1: 11000).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:52'!
testB10
	self year: self lastYear;
		tin: '466003933';
		name: 'SMOKES WINSTON';
		address: '483 LAUNDRY LANE';
		city: 'BUCKLE';
		state: 'TN';
		zip: '24311'.
	self data at: #Payment1 put: (self payment1: 23600).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:52'!
testB11
	self year: self lastYear;
		tin: '105870004';
		name: 'STEMWINDER CHARLES';
		address: '2754 UNCLE BEND';
		city: 'FLOWERY BRANCH';
		state: 'GA';
		zip: '32317'.
	self data at: #Payment1 put: (self payment1: 67).
	self data at: #TINtype put: '2'.
	self data at: #StateCode put: self stateCode.
	self sequence.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'test file' stamp: 'dhn 1/17/2015 16:53'!
testT
	self realT.
	self data at: #Test put: 'T'.
	^ self assemble: self data! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:56'!
tin: aString
	data at: #TIN put: aString! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:56'!
year: aString
	data at: #Year put: aString! !

!Record1099Misc methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:57'!
zip: aString
	data at: #Zip put: aString! !

!Record1099Misc class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 16:58'!
recl
	"Answer the length of FIRE records specified by IRS"
	^ 750 - String crlfString size! !

!Arecord methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:36'!
initialize
	super initialize.
! !

!Arecord class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:32'!
fields
	"Answer the A Record definition consisting of field names, positions, justification, and padding"
	^ Dictionary new
		at: #Type put: (Field character: $A at: 1);
		at: #Year put: (Field at: 2@5);
		at: #Combined put: (Field at: 6@6);
		at: #Blank1 put: (Field at: 7@11);
		at: #TIN put: (Field at: 12@20);
		at: #Namectl put: (Field at: 21@24);
		at: #LastFiling put: (Field at: 25@25);
		at: #TypeReturn put: (Field at: 26@27);
		at: #AmountCodes put: (Field at: 28@43);
		at: #Blank2 put: (Field at: 44@51);
		at: #Foreign put: (Field at: 52@52);
		at: #Name put: (Field at: 53@92);
		at: #Namex put: (Field at: 93@132);
		at: #TransferAgent put: (Field at: 133@133);
		at: #Address put: (Field at: 134@173);
		at: #City put: (Field at: 174@213);
		at: #State put: (Field at: 214@215);
		at: #Zip put: (Field at: 216@224);
		at: #Telephone put: (Field at: 225@239);
		at: #Blank3 put: (Field at: 240@499);
		at: #Sequence put: (Field rightJustifyAt: 500@507 with: $0);
		at: #Blank4 put: (Field at: 508@748);
		yourself! !

!Brecord methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:35'!
initialize
	super initialize.
! !

!Brecord methodsFor: 'accessing' stamp: 'dhn 1/17/2015 16:36'!
payment1: anAmount
	self class handler paidSub: self class handler paidSub + anAmount.
	self class handler payeesSub: self class handler payeesSub + 1.
	^ anAmount asString! !

!Brecord class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:32'!
fields
	"Answer the B Record definition consisting of field names, positions, justification, and padding"
	^ Dictionary new
		at: #Type put: (Field character: $B at: 1);
		at: #Year put: (Field at: 2@5);
		at: #Corrected put: (Field at: 6@6);
		at: #Namectl put: (Field at: 7@10);
		at: #TINtype put: (Field at: 11@11);
		at: #TIN put: (Field at: 12@20);
		at: #Account put: (Field at: 21@40);
		at: #OfficeCode put: (Field at: 41@44);
		at: #Blank1 put: (Field at: 45@54);
		at: #Payment1 put: (Field rightJustifyAt: 55@66 with: $0);
		at: #Payment2 put: (Field rightJustifyAt: 67@78 with: $0);
		at: #Payment3 put: (Field rightJustifyAt: 79@90 with: $0);
		at: #Payment4 put: (Field rightJustifyAt: 91@102 with: $0);
		at: #Payment5 put: (Field rightJustifyAt: 103@114 with: $0);
		at: #Payment6 put: (Field rightJustifyAt: 115@126 with: $0);
		at: #Payment7 put: (Field rightJustifyAt: 127@138 with: $0);
		at: #Payment8 put: (Field rightJustifyAt: 139@150 with: $0);
		at: #Payment9 put: (Field rightJustifyAt: 151@162 with: $0);
		at: #PaymentA put: (Field rightJustifyAt: 163@174 with: $0);
		at: #PaymentB put: (Field rightJustifyAt: 175@186 with: $0);
		at: #PaymentC put: (Field rightJustifyAt: 187@198 with: $0);
		at: #PaymentD put: (Field rightJustifyAt: 199@210 with: $0);
		at: #PaymentE put: (Field rightJustifyAt: 211@222 with: $0);
		at: #PaymentF put: (Field rightJustifyAt: 223@234 with: $0);
		at: #PaymentG put: (Field rightJustifyAt: 235@246 with: $0);
		at: #Foreign put: (Field at: 247@247);
		at: #Name put: (Field at: 248@287);
		at: #Namex put: (Field at: 288@327);
		at: #Blank2 put: (Field at: 328@367);
		at: #Address put: (Field at: 368@407);
		at: #Blank3 put: (Field at: 408@447);
		at: #City put: (Field at: 448@487);
		at: #State put: (Field at: 488@489);
		at: #Zip put: (Field at: 490@498);
		at: #Blank4 put: (Field at: 499@499);
		at: #Sequence put: (Field rightJustifyAt: 500@507 with: $0);
		at: #Blank5 put: (Field at: 508@543);
		at: #TINnotice put: (Field at: 544@544);
		at: #Blank6 put: (Field at: 545@546);
		at: #DirectSales put: (Field at: 547@547);
		at: #Blank7 put: (Field at: 548@662);
		at: #SpecialData put: (Field at: 663@722);
		at: #StateWitheld put: (Field at: 723@734);
		at: #LocalWitheld put: (Field at: 735@746);
		at: #StateCode put: (Field at: 747@748);
		yourself! !

!Crecord methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:35'!
initialize
	super initialize.
! !

!Crecord class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:32'!
fields
	"Answer the C Record definition consisting of field names, positions, justification, and padding"
	^ Dictionary new
		at: #Type put: (Field character: $C at: 1);
		at: #Payees put: (Field rightJustifyAt: 2@9 with: $0);
		at: #Blank1 put: (Field at: 10@15);
		at: #Control1 put: (Field rightJustifyAt: 16@33 with: $0);
		at: #Control2 put: (Field rightJustifyAt: 34@51 with: $0);
		at: #Control3 put: (Field rightJustifyAt: 52@69 with: $0);
		at: #Control4 put: (Field rightJustifyAt: 70@87 with: $0);
		at: #Control5 put: (Field rightJustifyAt: 88@105 with: $0);
		at: #Control6 put: (Field rightJustifyAt: 106@123 with: $0);
		at: #Control7 put: (Field rightJustifyAt: 124@141 with: $0);
		at: #Control8 put: (Field rightJustifyAt: 142@159 with: $0);
		at: #Control9 put: (Field rightJustifyAt: 160@177 with: $0);
		at: #ControlA put: (Field rightJustifyAt: 178@195 with: $0);
		at: #ControlB put: (Field rightJustifyAt: 196@213 with: $0);
		at: #ControlC put: (Field rightJustifyAt: 214@231 with: $0);
		at: #ControlD put: (Field rightJustifyAt: 232@249 with: $0);
		at: #ControlE put: (Field rightJustifyAt: 250@267 with: $0);
		at: #ControlF put: (Field rightJustifyAt: 268@285 with: $0);
		at: #ControlG put: (Field rightJustifyAt: 286@303 with: $0);
		at: #Blank2 put: (Field at: 304@499);
		at: #Sequence put: (Field rightJustifyAt: 500@507 with: $0);
		at: #Blank3 put: (Field at: 508@748);
		yourself! !

!Frecord methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:35'!
initialize
	super initialize.
! !

!Frecord class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:34'!
fields
	"Answer the F Record definition consisting of field names, positions, justification, and padding"
	^ Dictionary new
		at: #Type put: (Field character: $F at: 1);
		at: #Acount put: (Field rightJustifyAt: 2@9 with: $0);
		at: #Zeros put: (Field rightJustifyAt: 10@30 with: $0);
		at: #Blank1 put: (Field at: 31@49);
		at: #Payees put: (Field rightJustifyAt: 50@57 with: $0);
		at: #Blank2 put: (Field at: 58@499);
		at: #Sequence put: (Field rightJustifyAt: 500@507 with: $0);
		at: #Blank3 put: (Field at: 508@748);
		yourself! !

!Krecord methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:35'!
initialize
	super initialize.
! !

!Krecord class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:35'!
fields
	"Answer the K Record definition consisting of field names, positions, justification, and padding"
	^ Dictionary new
		at: #Type put: (Field character: $K at: 1);
		at: #Payees put: (Field rightJustifyAt: 2@9 with: $0);
		at: #Blank1 put: (Field at: 10@15);
		at: #Control1 put: (Field rightJustifyAt: 16@33 with: $0);
		at: #Control2 put: (Field rightJustifyAt: 34@51 with: $0);
		at: #Control3 put: (Field rightJustifyAt: 52@69 with: $0);
		at: #Control4 put: (Field rightJustifyAt: 70@87 with: $0);
		at: #Control5 put: (Field rightJustifyAt: 88@105 with: $0);
		at: #Control6 put: (Field rightJustifyAt: 106@123 with: $0);
		at: #Control7 put: (Field rightJustifyAt: 124@141 with: $0);
		at: #Control8 put: (Field rightJustifyAt: 142@159 with: $0);
		at: #Control9 put: (Field rightJustifyAt: 160@177 with: $0);
		at: #ControlA put: (Field rightJustifyAt: 178@195 with: $0);
		at: #ControlB put: (Field rightJustifyAt: 196@213 with: $0);
		at: #ControlC put: (Field rightJustifyAt: 214@231 with: $0);
		at: #ControlD put: (Field rightJustifyAt: 232@249 with: $0);
		at: #ControlE put: (Field rightJustifyAt: 250@267 with: $0);
		at: #ControlF put: (Field rightJustifyAt: 268@285 with: $0);
		at: #ControlG put: (Field rightJustifyAt: 286@303 with: $0);
		at: #Blank2 put: (Field at: 304@499);
		at: #Sequence put: (Field rightJustifyAt: 500@507 with: $0);
		at: #Blank3 put: (Field at: 508@706);
		at: #StateWithheld put: (Field at: 707@724);
		at: #LocalWithheld put: (Field at: 725@742);
		at: #Blank4 put: (Field at: 743@746);
		at: #StateCode put: (Field at: 747@748);
		yourself! !

!Trecord methodsFor: 'initialize-release' stamp: 'dhn 1/17/2015 16:34'!
initialize
	super initialize.
! !

!Trecord class methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:36'!
fields
	"Answer the T Record definition consisting of field names, positions, justification, and padding"
	^ Dictionary new
		at: #Type put: (Field character: $T at: 1);
		at: #Year put: (Field at: 2@5);
		at: #PriorYear put: (Field at: 6@6);
		at: #TIN put: (Field at: 7@15);
		at: #Control put: (Field at: 16@20);
		at: #Blank1 put: (Field at: 21@27);
		at: #Test put: (Field at: 28@28);
		at: #Foreign put: (Field at: 29@29);
		at: #Name put: (Field at: 30@69);
		at: #Namex put: (Field at: 70@109);
		at: #Company put: (Field at: 110@149);
		at: #Companyx put: (Field at: 150@189);
		at: #Address put: (Field at: 190@229);
		at: #City put: (Field at: 230@269);
		at: #State put: (Field at: 270@271);
		at: #Zip put: (Field at: 272@280);
		at: #Blank2 put: (Field at: 281@295);
		at: #Payees put: (Field rightJustifyAt: 296@303 with: $0);
		at: #Contact put: (Field at: 304@343);
		at: #Telephone put: (Field at: 344@358);
		at: #Email put: (Field at: 359@408);
		at: #Blank3 put: (Field at: 409@499);
		at: #Sequence put: (Field rightJustifyAt: 500@507 with: $0);
		at: #Blank4 put: (Field at: 508@517);
		at: #Vindicator put: (Field at: 518@518);
		at: #Vname put: (Field at: 519@558);
		at: #Vaddress put: (Field at: 559@598);
		at: #Vcity put: (Field at: 599@638);
		at: #Vstate put: (Field at: 639@640);
		at: #Vzip put: (Field at: 641@649);
		at: #Vcontact put: (Field at: 650@689);
		at: #Vtelephone put: (Field at: 690@704);
		at: #Blank5 put: (Field at: 705@739);
		at: #Vforeign put: (Field at: 740@740);
		at: #Blank6 put: (Field at: 741@748);
		yourself! !

!ConsistencyTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:40'!
testConsistency: aClass 
	"Verify that Fields of aClass abut with no gaps or overlap"
	| dix prev uns |
	dix _ aClass fields.
	uns _ OrderedCollection new.
	dix
		associationsDo: [:a | uns addFirst: a value location x -> a key].
	prev _ 0.
	uns asSortedCollection
		do: [:a | 
			self
				should: [((dix at: a value) location x)
						= (prev + 1)].
			prev := (dix at: a value) location y]! !

!ConsistencyTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:41'!
testRecords
	self testConsistency: Trecord.
	self testConsistency: Arecord.
	self testConsistency: Brecord.
	self testConsistency: Crecord.
	self testConsistency: Krecord.
	self testConsistency: Frecord.
! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 2/2/2015 11:41'!
data: length with: aChar
	| str |
	str _ (String new: length - 1) writeStream.
	length - 1 timesRepeat: [str nextPut: aChar].
	^ str contents! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 2/2/2015 11:38'!
fillData: aClass 
	"Put visible characters in every field longer than 1, leaving room for one pad character."
	| dat record str fields sort i fld |
	str _ String new writeStream.
	record _ aClass new.
	fields _ aClass fields.
	sort _ OrderedCollection new.
	fields
		associationsDo: [:a | sort addFirst: a value location x -> a key].
	dat _ $a to: $z.
	i _ 0.
	sort asSortedCollection
		do: [:s | 
			fld _ fields at: s value.
			i _ i + 1.
			str nextPutAll: (record for: s value 
				put: (self data: fld length with: (dat atWrap: i)))].
	self
		should: [str size = ExampleLayout recl].
	^ str contents! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/19/2015 12:11'!
padOnly: aClass 
	| record str fields sort |
	str _ String new writeStream.
	record _ aClass new.
	fields _ aClass fields.
	sort _ OrderedCollection new.
	fields
		associationsDo: [:a | sort addFirst: a value location x -> a key].
	sort asSortedCollection
		do: [:s | 
			str
				nextPutAll: (record for: s value put: '')].
	self
		should: [str size = Record1099Misc recl].
	^ str contents! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/19/2015 12:22'!
recLength: aClass 
	| fields ttl |
	fields _ aClass fields.
	ttl _ 0.
	fields
		do: [:f | ttl _ ttl + f length].
	self
		should: [ttl = Record1099Misc recl]! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:45'!
testDataA
	^ self fillData: Arecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:45'!
testDataB
	^ self fillData: Brecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:45'!
testDataC
	^ self fillData: Crecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:46'!
testDataF
	^ self fillData: Frecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:46'!
testDataK
	^ self fillData: Krecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:46'!
testDataT
	^ self fillData: Trecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/19/2015 12:11'!
testEmpty
	| ttl |
	ttl _ Trecord new realT size.
	self
		should: [ttl = (Record1099Misc recl +2)].
	ttl _ Arecord new realA size.
	self
		should: [ttl = (Record1099Misc recl +2)].
	ttl _ Brecord new testB01 size.
	self
		should: [ttl = (Record1099Misc recl +2)].
	ttl _ Crecord new realC size.
	self
		should: [ttl = (Record1099Misc recl +2)].
	ttl _ Krecord new realK size.
	self
		should: [ttl = (Record1099Misc recl +2)].
	ttl _ Frecord new realF size.
	self
		should: [ttl = (Record1099Misc recl +2)].
! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:49'!
testPadA
	^ self padOnly: Arecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:49'!
testPadB
	^ self padOnly: Brecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:50'!
testPadC
	^ self padOnly: Crecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:50'!
testPadF
	^ self padOnly: Frecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:50'!
testPadK
	^ self padOnly: Krecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:51'!
testPadT
	^ self padOnly: Trecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 11/8/2015 17:20'!
testPadding
	| file |

	file _ 'c:\aax\emfire.txt'.
	file asFileEntry forceWriteStream: [ :ios | ios
		nextPutAll: self testPadT;
		nextPutAll: self testPadA;
		nextPutAll: self testPadB;
		nextPutAll: self testPadC;
		nextPutAll: self testPadK;
		nextPutAll: self testPadF;
		nextPutAll: self testDataT;
		nextPutAll: self testDataA;
		nextPutAll: self testDataB;
		nextPutAll: self testDataC;
		nextPutAll: self testDataK;
		nextPutAll: self testDataF].
	file asFileEntry delete	
! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:52'!
testSizeA
	self recLength: Arecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:52'!
testSizeB
	self recLength: Brecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:52'!
testSizeC
	self recLength: Crecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:52'!
testSizeF
	self recLength: Frecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:52'!
testSizeK
	self recLength: Krecord! !

!LengthTests methodsFor: 'as yet unclassified' stamp: 'dhn 1/17/2015 17:53'!
testSizeT
	self recLength: Trecord! !
