Class {
	#name : #LinkedListed,
	#superclass : #Object,
	#instVars : [
		'headList',
		'tail',
		'size'
	],
	#category : #LinkedListTp
}

{ #category : #adding }
LinkedListed >> addLast: anObjectOrLink [

	| link |
	link:= anObjectOrLink .
	size=0 ifFalse: [ tail nextLink: link ] 
			 ifTrue: [ headList := link ].
	tail := link .
   size := size + 1.
]

{ #category : #converting }
LinkedListed >> asArray [
    "Return a new Array containing my elements"
 
    | arr cur|
    arr := OrderedCollection new.
 
    cur := headList.
    [cur isNotNil] whileTrue: [ arr add: (cur value). cur :=  cur nextLink.].
 
    ^ arr
]

{ #category : #accessing }
LinkedListed >> at:anInteger [

	| link_tmp |
	link_tmp := self first .
	(anInteger - 1) timesRepeat: [ link_tmp := link_tmp nextLink ].
	^ link_tmp
]

{ #category : #accessing }
LinkedListed >> at: anInteger put: anObject [

	(anInteger = size + 1 ) ifTrue: [ ^self addLast: anObject ].
	(anInteger = 1) ifTrue: [ ^headList = anObject ].
	(self at: anInteger - 1) nextLink: anObject.
	
]

{ #category : #enumerating }
LinkedListed >> do: block [
	"Execute block for each of my elements."

	self linksDo: [ :each | block data: each data ].
]

{ #category : #accessing }
LinkedListed >> first [ 
	^headList .
]

{ #category : #'as yet unclassified' }
LinkedListed >> getSize [
	^size
]

{ #category : #initialization }
LinkedListed >> initialize [ 
	super initialize.
	size := 0
]

{ #category : #testing }
LinkedListed >> isEmpty [
	^headList isNil.
]

{ #category : #enumerating }
LinkedListed >> linksDo: block [ 
	|current|
	current:=headList .
	[ current isNil ] whileFalse: [ 
		block data: current.
		current := current nextLink
	 ]
]

{ #category : #'as yet unclassified' }
LinkedListed >> size [
	^size
]
