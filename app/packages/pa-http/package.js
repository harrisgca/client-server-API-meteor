Package.describe({
  name: 'pa-http',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: '',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.2.0.2');
  // api.use('ecmascript');
  api.use([
    'meteor-base',
    'ecmascript',
    'iron:router',
    'coffeescript',
    'blaze-html-templates',
    'http',
    'session',
    'tracker',
    'mongo',
    'jquery',
    'reactive-var'
  ]);
  api.addFiles([
    'both/testController.coffee',
    'client/test.html',
    'client/test.coffee',
    'routes.coffee'
  ], 'client');

  api.addFiles([
    'server/api.coffee'
  ]);
});



Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('pa-http');
  api.addFiles('pa-http-tests.js');
});
