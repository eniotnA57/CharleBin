install:
	@echo "Installation des dépendances..."
	@composer install

update:
	@echo "Mise à jour des dépendances..."
	@composer update

stop:
	@echo "Aucune commande définie pour 'stop'. Ajoutez une action ici si nécessaire."
lint:
	@find lib/ -name "*.php" -print0 | xargs -0 -n1 php -l

	@vendor/bin/phpcs --standard=.phpcs.xml lib/

	@vendor/bin/phpmd lib/ text .phpmd.xml
