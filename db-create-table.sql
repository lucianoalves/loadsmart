-- Drop table

-- DROP TABLE public.loadsmart

CREATE TABLE public.loadsmart (
	loadsmart_id text NULL,
	lane text NULL,
	quote_date text NULL,
	book_date text NULL,
	source_date text NULL,
	pickup_date text NULL,
	delivery_date text NULL,
	book_price text NULL,
	source_price text NULL,
	pnl text NULL,
	mileage text NULL,
	equipment_type text NULL,
	carrier_rating text NULL,
	sourcing_channel text NULL,
	vip_carrier text NULL,
	carrier_dropped_us_count text NULL,
	carrier_name text NULL,
	shipper_name text NULL,
	carrier_on_time_to_pickup text NULL,
	carrier_on_time_to_delivery text NULL,
	carrier_on_time_overall text NULL,
	pickup_appointment_time text NULL,
	delivery_appointment_time text NULL,
	has_mobile_app_tracking23 text NULL,
	has_mobile_app_tracking24 text NULL,
	has_macropoint_tracking text NULL,
	has_edi_tracking text NULL,
	contracted_load text NULL,
	load_booked_autonomously text NULL,
	load_sourced_autonomously text NULL,
	load_was_cancelled text NULL
)
WITH (
	OIDS=FALSE
) ;
