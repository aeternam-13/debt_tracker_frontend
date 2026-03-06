enum AppRoutes {
  login('/'),
  debtorList('/debtorlist'),
  addDebtor('/add_debtor'),
  settings('/settings');

  final String path;
  const AppRoutes(this.path);
}
