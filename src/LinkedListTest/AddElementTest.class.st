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
	
	self assert: list first equals: 2 .
]

{ #category : #tests }
AddElementTest >> testAt [
	| list node1 |
	list := LinkedListed new.
	node1 := Node new.
	list addLast: 2.
	self assert: (list at:1) equals: 2.
]

{ #category : #tests }
AddElementTest >> testAtPut [
	|list |
	list := Node new.
	self assert: (list at:1 put:2) equals: 2 .
]

{ #category : #tests }
AddElementTest >> testDo [
	| list sum |
	list := LinkedListed  new.
	sum := 0.
	list addLast: 2 .
	
	list do: [ :each | self assert: each equals: sum. sum = sum + each ]
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
AddElementTest >> testIsEmpty [
	| list node1|
	list := LinkedListed new.
	
	node1 := Node new.
	node1 data:1.
	list addLast: node1.
	self assert: list isEmpty equals: false.
]
