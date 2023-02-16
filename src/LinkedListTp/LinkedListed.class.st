Class {
	#name : #LinkedListed,
	#superclass : #Object,
	#instVars : [
		'headList',
		'size'
	],
	#category : #LinkedListTp
}

{ #category : #adding }
LinkedListed >> addLast: aLink [

	| link |
	link:= aLink.
	size ifNotNil: [ size nextLink: link ]. "If list is not empty"
    headList  ifNil: [ headList  := link ]."if list empty"
    size := link.                           "update last node"
    ^ link 
]
