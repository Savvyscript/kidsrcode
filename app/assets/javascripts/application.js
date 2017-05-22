


// <!-- app/assets/javascripts/application.js  -->
//= require jquery
//= require jquery_ujs
//= require angular/angular
//= require angular-ui-router/release/angular-ui-router

//= require_self
//= require_tree .

angular
  .module('kidsrcodes', ['ui.router'])
  .config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        component: 'homePage'
      });

    
    $urlRouterProvider.otherwise('/');

    $locationProvider.html5Mode({
      enabled: true,
      requireBase: false
    });
  });

  $(document).ready(function(){

  (function($) {

    $('#header__icon').click(function(e){
      e.preventDefault();
      $('body').toggleClass('with--sidebar');
    });
    
    $('#site-cache').click(function(e){
      $('body').removeClass('with--sidebar');
    });

  })(jQuery);

});
