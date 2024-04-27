import 'package:flutter/material.dart';
import 'package:flutter_template/features/authentication/screens/example_screen.dart';
import 'package:flutter_template/utils/routes/routes.dart';
import 'package:go_router/go_router.dart';

class GoRoutesConfig {
  GoRoutesConfig({required this.context});

  final BuildContext context;

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: GoRoutes.home,
        builder: (BuildContext context, GoRouterState state) {
          return const MyExampleScreen();
        },
        routes: <RouteBase>[
          /// --- RorkWiki
          GoRoute(
            path: GoRoutes.rorkWiki,
            builder: (BuildContext context, GoRouterState state) {
              return const MyExampleScreen();
            },
            routes: <RouteBase>[
              GoRoute(
                  path: GoRoutes.rorkWikiUniversities,
                  builder: (BuildContext context, GoRouterState state) {
                    return const MyExampleScreen();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                      path: GoRoutes.edit,
                      builder: (BuildContext context, GoRouterState state) {
                        return const MyExampleScreen();
                      },
                    ),
                  ]),
              GoRoute(
                path: GoRoutes.rorkWikiCourses,
                builder: (BuildContext context, GoRouterState state) {
                  return const MyExampleScreen();
                },
              ),
              GoRoute(
                path: GoRoutes.rorkWikiScholarships,
                builder: (BuildContext context, GoRouterState state) {
                  return const MyExampleScreen();
                },
              ),
            ],
          ),

          /// --- RorkeLibrary
          GoRoute(
            path: GoRoutes.rorkELibrary,
            builder: (BuildContext context, GoRouterState state) {
              return const MyExampleScreen();
            },
          ),
        ],
      ),
    ],
  );
}
