FROM node:13.5.0-alpine AS base

RUN mkdir /cache
WORKDIR /cache

FROM base AS builder

COPY package.json ./
COPY package-lock.json ./
RUN npm install

RUN mkdir /app
WORKDIR /app