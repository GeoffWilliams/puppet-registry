all:
	bundle exec pdqtest --skip-idempotency all
	bundle exec puppet strings

shell:
	bundle exec pdqtest  --skip-idempotency --keep-container acceptance
