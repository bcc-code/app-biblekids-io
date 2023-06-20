
upload:
	gsutil -m cp -R ./* gs://app-biblekids-io
	gsutil -m cp -R .well-known-backup/* gs://app-biblekids-io/.well-known
	gsutil setmeta -h "Content-type:application/json" gs://app-biblekids-io/.well-known/apple-app-site-association
	gsutil setmeta -h "Cache-control:no-cache, max-age=0" gs://app-biblekids-io/index.html