Class {
	#name : #LinkedListedNode,
	#superclass : #Object,
	#instVars : [
		'data',
		'nextLink'
	],
	#category : #LinkedListTp
}

{ #category : #accessing }
LinkedListedNode >> data [
	^data 
]

{ #category : #accessing }
LinkedListedNode >> data: newData [
	data:= newData 
]

{ #category : #accessing }
LinkedListedNode >> nextLink [  
	^nextLink
]

{ #category : #accessing }
LinkedListedNode >> nextLink: newLink [
    nextLink := newLink.
]
