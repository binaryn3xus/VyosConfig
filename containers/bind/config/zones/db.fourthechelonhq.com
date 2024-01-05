; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN fourthechelonhq.com.
@ 3600 IN SOA fourthechelonhq.com. gateway.fourthechelonhq.com. (
  1704475517         ; serial number (epoch timestamp)
  7200               ; refresh period
  3600               ; retry period
  1209600            ; expire time
  3600               ; minimum ttl
)

; NS Records
@                          IN  NS ns.fourthechelonhq.com.

; SERVERS
pikvm             IN  A  10.0.30.5