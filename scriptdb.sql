CREATE TABLE IF NOT EXISTS `mensaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_hora` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('leido', 'no_leido', 'recibido', 'enviado') COLLATE utf8_spanish_ci DEFAULT 'enviado',
  `id_remitente` int(11) NOT NULL,
  `id_destinatario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;