# Abuse Templates
Templates for dealing with relay abuse notifications

## Templates

*	CCIRC - A response which satisfies Public Safety's CCIRC
*	etc

## Script Usage

On OSX, you can pipe into pbcopy to copy to clipboard to quick pasting into an email.

```
./gen-abuse-reply.bash <template> <IP> | pbcopy
```

On Linux, the same thing should work with xclip.

```
./gen-abuse-reply.bash <template> <IP> | xclip
```

