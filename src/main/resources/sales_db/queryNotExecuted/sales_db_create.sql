-- noinspection SqlCurrentSchemaInspectionForFile

create database sales_db
    with owner postgres;

create table public.customers
(
    customer_id       serial
        constraint customers_pk
            primary key,
    name              varchar                   not null,
    email             varchar                   not null,
    registration_date date default current_date not null
);

alter table public.customers
    owner to postgres;

create table public.products
(
    product_id serial
        constraint product_pk
            primary key,
    name       varchar(255)   not null,
    price      DECIMAL(10, 2) not null,
    category   varchar(255)   not null
);

alter table public.products
    owner to postgres;

create table public.orders
(
    order_id           serial
        constraint order_pk
            primary key,
    order_date         date default current_date not null,
    customer_id        integer                   not null
        constraint orders_customers_customer_id_fk
            references public.customers
            on delete cascade,
    total_order_amount INT                       not null
);

alter table public.orders
    owner to postgres;

create table public.order_items
(
    order_item_id serial
        constraint order_item_pk
            primary key,
    product_id    integer        not null
        constraint order_items_products_product_id_fk
            references public.products
            on delete cascade,
    quantity      INT            not null,
    price         DECIMAL(10, 2) not null,
    order_id    integer        not null
        constraint order_items_orders_order_id_fk
            references public.products
            on delete cascade
);

alter table public.order_items
    owner to postgres;