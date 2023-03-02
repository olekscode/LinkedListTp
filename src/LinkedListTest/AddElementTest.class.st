Class {
	#name : #AddElementTest,
	#superclass : #TestCase,
	#instVars : [
		'samplelist'
	],
	#category : #LinkedListTest
}

{ #category : #running }
AddElementTest >> setUp [
   super setUp. 
   samplelist := LinkedListed new.
]

{ #category : #tests }
AddElementTest >> testAdd [
	|list "node1" |
	list := LinkedListed new.
	"node1 := Node new.
	node1 data: 2."
	list addLast: 2.
	list addLast: 3.
	
	self assert: list first equals: 2 .
]

{ #category : #tests }
AddElementTest >> testAt [
	| list node1 |
	list := LinkedListed new.
	node1 := LinkedListedNode new.
	list addLast: 2.
	list addLast: 3.
	self assert: (list at:1) equals: 2.
]

{ #category : #tests }
AddElementTest >> testAtPut [
	|list |
	list := LinkedListed new.
	self assert: (list at:1 put:2) equals: 2 .
]

{ #category : #tests }
AddElementTest >> testCollect [
	| list doubles |
	list := LinkedListed new.
	list addLast: 1.
	list addLast: 2.
	list addLast: 3.
	
	doubles := list collect: [ :each | each * 2 ].
	
	self assert: doubles first equals: 2.
	self assert: doubles size equals: 3.
]

{ #category : #tests }
AddElementTest >> testDetect [
	| list result |
	list := LinkedListed  new.
	list addLast: 2 .
	list addLast: 3.
	list addLast: 4.
	result := list detect: [ :each | each data even ].
	self assert: result data equals: 2.
]

{ #category : #tests }
AddElementTest >> testDo [
	| list sum |
	list := LinkedListed  new.
	sum := 2.
	list addLast: 2 .
	list addLast: 3.
	list addLast: 4.
	
	list do: [ :each |
		self assert: each data equals: sum.
		sum := sum + 1 ]
]

{ #category : #tests }
AddElementTest >> testFirst [
	| list "node1"  |
	list := LinkedListed new.
"	node1 := Node new."
	list addLast: 2.
	
	self assert: list first equals: 2.
	
]

{ #category : #tests }
AddElementTest >> testInjectInto [ 
	| myList result |
myList := LinkedListed new.
myList addLast: 1; addLast: 2; addLast: 3; addLast: 4.
result := myList inject: [:sum :each | sum + each ] into: 0.
self assert: result first equals: 10.
]

{ #category : #tests }
AddElementTest >> testIsEmpty [
	| list node1|
	list := LinkedListed new.
	
	node1 := LinkedListedNode new.
	node1 data:1.
	list addLast: node1.
	self assert: list isEmpty equals: false.
]

{ #category : #tests }
AddElementTest >> testReject [
	| list result|
	list := LinkedListed  new.
	list addLast: 2 .
	list addLast: 3.
	list addLast: 4.
	result := list reject: [ :each | each data even ].
	self assert: result data equals: 3.
]

{ #category : #tests }
AddElementTest >> testRemove [
	|list |
	list := LinkedListed new.
	list addLast: 2.
	list addLast: 3.
	
	list remove: 2.
	self assert: list first equals: 3 .
]

{ #category : #tests }
AddElementTest >> testRemoveAt [
	|list |
	list := LinkedListed new.
	list addLast: 2.
	list addLast: 3.
	
	list removeAt: 1.
	self assert: list first equals: 2.
]

{ #category : #tests }
AddElementTest >> testSelect [
	| list result|
	list := LinkedListed  new.
	list addLast: 2 .
	list addLast: 3.
	list addLast: 4.
	result := list select: [ :each | each data even ].
	self assert: result data equals: 2.
]

{ #category : #tests }
AddElementTest >> testSort [
	|list  |
	list := LinkedListed new.

	list addLast: 2.
	list addLast: 3.
	
	self assert: list sort equals: true.
]

{ #category : #tests }
AddElementTest >> testSorted [
	|list  |
	list := LinkedListed new.

	list addLast: 3.
	list addLast: 2.
	
	self assert: list sorted equals: true.
	
]
